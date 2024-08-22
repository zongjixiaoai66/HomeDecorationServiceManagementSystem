
package com.controller;

import java.io.File;
import java.math.BigDecimal;
import java.net.URL;
import java.text.SimpleDateFormat;
import com.alibaba.fastjson.JSONObject;
import java.util.*;
import org.springframework.beans.BeanUtils;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.context.ContextLoader;
import javax.servlet.ServletContext;
import com.service.TokenService;
import com.utils.*;
import java.lang.reflect.InvocationTargetException;

import com.service.DictionaryService;
import org.apache.commons.lang3.StringUtils;
import com.annotation.IgnoreAuth;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.entity.*;
import com.entity.view.*;
import com.service.*;
import com.utils.PageUtils;
import com.utils.R;
import com.alibaba.fastjson.*;

/**
 * 预算
 * 后端接口
 * @author
 * @email
*/
@RestController
@Controller
@RequestMapping("/yusuan")
public class YusuanController {
    private static final Logger logger = LoggerFactory.getLogger(YusuanController.class);

    private static final String TABLE_NAME = "yusuan";

    @Autowired
    private YusuanService yusuanService;


    @Autowired
    private TokenService tokenService;

    @Autowired
    private DictionaryService dictionaryService;//字典
    @Autowired
    private GongchenganpaiService gongchenganpaiService;//工程安排
    @Autowired
    private HetongService hetongService;//合同
    @Autowired
    private ShouhouService shouhouService;//售后服务
    @Autowired
    private YonghuService yonghuService;//用户
    @Autowired
    private ZhuangxiufenggeService zhuangxiufenggeService;//装修风格
    @Autowired
    private ZhuangxiufenggeCollectionService zhuangxiufenggeCollectionService;//装修风格收藏
    @Autowired
    private ZhuangxiufenggeLiuyanService zhuangxiufenggeLiuyanService;//装修风格留言
    @Autowired
    private ZhucaiService zhucaiService;//主材
    @Autowired
    private ZhucaiCollectionService zhucaiCollectionService;//主材收藏
    @Autowired
    private ZhucaiLiuyanService zhucaiLiuyanService;//主材留言
    @Autowired
    private UsersService usersService;//管理员


    /**
    * 后端列表
    */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, HttpServletRequest request){
        logger.debug("page方法:,,Controller:{},,params:{}",this.getClass().getName(),JSONObject.toJSONString(params));
        String role = String.valueOf(request.getSession().getAttribute("role"));
        if(false)
            return R.error(511,"永不会进入");
        else if("用户".equals(role))
            params.put("yonghuId",request.getSession().getAttribute("userId"));
        CommonUtil.checkMap(params);
        PageUtils page = yusuanService.queryPage(params);

        //字典表数据转换
        List<YusuanView> list =(List<YusuanView>)page.getList();
        for(YusuanView c:list){
            //修改对应字典表字段
            dictionaryService.dictionaryConvert(c, request);
        }
        return R.ok().put("data", page);
    }

    /**
    * 后端详情
    */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id, HttpServletRequest request){
        logger.debug("info方法:,,Controller:{},,id:{}",this.getClass().getName(),id);
        YusuanEntity yusuan = yusuanService.selectById(id);
        if(yusuan !=null){
            //entity转view
            YusuanView view = new YusuanView();
            BeanUtils.copyProperties( yusuan , view );//把实体数据重构到view中
            //级联表 装修风格
            //级联表
            ZhuangxiufenggeEntity zhuangxiufengge = zhuangxiufenggeService.selectById(yusuan.getZhuangxiufenggeId());
            if(zhuangxiufengge != null){
            BeanUtils.copyProperties( zhuangxiufengge , view ,new String[]{ "id", "createTime", "insertTime", "updateTime", "yonghuId"});//把级联的数据添加到view中,并排除id和创建时间字段,当前表的级联注册表
            view.setZhuangxiufenggeId(zhuangxiufengge.getId());
            }
            //级联表 用户
            //级联表
            YonghuEntity yonghu = yonghuService.selectById(yusuan.getYonghuId());
            if(yonghu != null){
            BeanUtils.copyProperties( yonghu , view ,new String[]{ "id", "createTime", "insertTime", "updateTime", "yonghuId"});//把级联的数据添加到view中,并排除id和创建时间字段,当前表的级联注册表
            view.setYonghuId(yonghu.getId());
            }
            //修改对应字典表字段
            dictionaryService.dictionaryConvert(view, request);
            return R.ok().put("data", view);
        }else {
            return R.error(511,"查不到数据");
        }

    }

    /**
    * 后端保存
    */
    @RequestMapping("/save")
    public R save(@RequestBody YusuanEntity yusuan, HttpServletRequest request){
        logger.debug("save方法:,,Controller:{},,yusuan:{}",this.getClass().getName(),yusuan.toString());

        String role = String.valueOf(request.getSession().getAttribute("role"));
        if(false)
            return R.error(511,"永远不会进入");
        else if("用户".equals(role))
            yusuan.setYonghuId(Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId"))));

        Wrapper<YusuanEntity> queryWrapper = new EntityWrapper<YusuanEntity>()
            .eq("yonghu_id", yusuan.getYonghuId())
            .eq("zhuangxiufengge_id", yusuan.getZhuangxiufenggeId())
            .eq("yusuan_name", yusuan.getYusuanName())
            .eq("yusuan_types", yusuan.getYusuanTypes())
            ;

        logger.info("sql语句:"+queryWrapper.getSqlSegment());
        YusuanEntity yusuanEntity = yusuanService.selectOne(queryWrapper);
        if(yusuanEntity==null){
            yusuan.setInsertTime(new Date());
            yusuan.setCreateTime(new Date());
            yusuanService.insert(yusuan);
            return R.ok();
        }else {
            return R.error(511,"表中有相同数据");
        }
    }

    /**
    * 后端修改
    */
    @RequestMapping("/update")
    public R update(@RequestBody YusuanEntity yusuan, HttpServletRequest request) throws NoSuchFieldException, ClassNotFoundException, IllegalAccessException, InstantiationException {
        logger.debug("update方法:,,Controller:{},,yusuan:{}",this.getClass().getName(),yusuan.toString());
        YusuanEntity oldYusuanEntity = yusuanService.selectById(yusuan.getId());//查询原先数据

        String role = String.valueOf(request.getSession().getAttribute("role"));
//        if(false)
//            return R.error(511,"永远不会进入");
//        else if("用户".equals(role))
//            yusuan.setYonghuId(Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId"))));

            yusuanService.updateById(yusuan);//根据id更新
            return R.ok();
    }



    /**
    * 删除
    */
    @RequestMapping("/delete")
    public R delete(@RequestBody Integer[] ids, HttpServletRequest request){
        logger.debug("delete:,,Controller:{},,ids:{}",this.getClass().getName(),ids.toString());
        List<YusuanEntity> oldYusuanList =yusuanService.selectBatchIds(Arrays.asList(ids));//要删除的数据
        yusuanService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }


    /**
     * 批量上传
     */
    @RequestMapping("/batchInsert")
    public R save( String fileName, HttpServletRequest request){
        logger.debug("batchInsert方法:,,Controller:{},,fileName:{}",this.getClass().getName(),fileName);
        Integer yonghuId = Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId")));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            List<YusuanEntity> yusuanList = new ArrayList<>();//上传的东西
            Map<String, List<String>> seachFields= new HashMap<>();//要查询的字段
            Date date = new Date();
            int lastIndexOf = fileName.lastIndexOf(".");
            if(lastIndexOf == -1){
                return R.error(511,"该文件没有后缀");
            }else{
                String suffix = fileName.substring(lastIndexOf);
                if(!".xls".equals(suffix)){
                    return R.error(511,"只支持后缀为xls的excel文件");
                }else{
                    URL resource = this.getClass().getClassLoader().getResource("static/upload/" + fileName);//获取文件路径
                    File file = new File(resource.getFile());
                    if(!file.exists()){
                        return R.error(511,"找不到上传文件，请联系管理员");
                    }else{
                        List<List<String>> dataList = PoiUtil.poiImport(file.getPath());//读取xls文件
                        dataList.remove(0);//删除第一行，因为第一行是提示
                        for(List<String> data:dataList){
                            //循环
                            YusuanEntity yusuanEntity = new YusuanEntity();
//                            yusuanEntity.setYonghuId(Integer.valueOf(data.get(0)));   //用户 要改的
//                            yusuanEntity.setZhuangxiufenggeId(Integer.valueOf(data.get(0)));   //风格 要改的
//                            yusuanEntity.setYusuanName(data.get(0));                    //预算名称 要改的
//                            yusuanEntity.setYusuanUuidNumber(data.get(0));                    //预算编号 要改的
//                            yusuanEntity.setYusuanTypes(Integer.valueOf(data.get(0)));   //预算类型 要改的
//                            yusuanEntity.setYusuanHuafei(data.get(0));                    //预计花费 要改的
//                            yusuanEntity.setYusuanContent("");//详情和图片
//                            yusuanEntity.setInsertTime(date);//时间
//                            yusuanEntity.setCreateTime(date);//时间
                            yusuanList.add(yusuanEntity);


                            //把要查询是否重复的字段放入map中
                                //预算编号
                                if(seachFields.containsKey("yusuanUuidNumber")){
                                    List<String> yusuanUuidNumber = seachFields.get("yusuanUuidNumber");
                                    yusuanUuidNumber.add(data.get(0));//要改的
                                }else{
                                    List<String> yusuanUuidNumber = new ArrayList<>();
                                    yusuanUuidNumber.add(data.get(0));//要改的
                                    seachFields.put("yusuanUuidNumber",yusuanUuidNumber);
                                }
                        }

                        //查询是否重复
                         //预算编号
                        List<YusuanEntity> yusuanEntities_yusuanUuidNumber = yusuanService.selectList(new EntityWrapper<YusuanEntity>().in("yusuan_uuid_number", seachFields.get("yusuanUuidNumber")));
                        if(yusuanEntities_yusuanUuidNumber.size() >0 ){
                            ArrayList<String> repeatFields = new ArrayList<>();
                            for(YusuanEntity s:yusuanEntities_yusuanUuidNumber){
                                repeatFields.add(s.getYusuanUuidNumber());
                            }
                            return R.error(511,"数据库的该表中的 [预算编号] 字段已经存在 存在数据为:"+repeatFields.toString());
                        }
                        yusuanService.insertBatch(yusuanList);
                        return R.ok();
                    }
                }
            }
        }catch (Exception e){
            e.printStackTrace();
            return R.error(511,"批量插入数据异常，请联系管理员");
        }
    }




    /**
    * 前端列表
    */
    @IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params, HttpServletRequest request){
        logger.debug("list方法:,,Controller:{},,params:{}",this.getClass().getName(),JSONObject.toJSONString(params));

        CommonUtil.checkMap(params);
        PageUtils page = yusuanService.queryPage(params);

        //字典表数据转换
        List<YusuanView> list =(List<YusuanView>)page.getList();
        for(YusuanView c:list)
            dictionaryService.dictionaryConvert(c, request); //修改对应字典表字段

        return R.ok().put("data", page);
    }

    /**
    * 前端详情
    */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id, HttpServletRequest request){
        logger.debug("detail方法:,,Controller:{},,id:{}",this.getClass().getName(),id);
        YusuanEntity yusuan = yusuanService.selectById(id);
            if(yusuan !=null){


                //entity转view
                YusuanView view = new YusuanView();
                BeanUtils.copyProperties( yusuan , view );//把实体数据重构到view中

                //级联表
                    ZhuangxiufenggeEntity zhuangxiufengge = zhuangxiufenggeService.selectById(yusuan.getZhuangxiufenggeId());
                if(zhuangxiufengge != null){
                    BeanUtils.copyProperties( zhuangxiufengge , view ,new String[]{ "id", "createDate"});//把级联的数据添加到view中,并排除id和创建时间字段
                    view.setZhuangxiufenggeId(zhuangxiufengge.getId());
                }
                //级联表
                    YonghuEntity yonghu = yonghuService.selectById(yusuan.getYonghuId());
                if(yonghu != null){
                    BeanUtils.copyProperties( yonghu , view ,new String[]{ "id", "createDate"});//把级联的数据添加到view中,并排除id和创建时间字段
                    view.setYonghuId(yonghu.getId());
                }
                //修改对应字典表字段
                dictionaryService.dictionaryConvert(view, request);
                return R.ok().put("data", view);
            }else {
                return R.error(511,"查不到数据");
            }
    }


    /**
    * 前端保存
    */
    @RequestMapping("/add")
    public R add(@RequestBody YusuanEntity yusuan, HttpServletRequest request){
        logger.debug("add方法:,,Controller:{},,yusuan:{}",this.getClass().getName(),yusuan.toString());
        Wrapper<YusuanEntity> queryWrapper = new EntityWrapper<YusuanEntity>()
            .eq("yonghu_id", yusuan.getYonghuId())
            .eq("zhuangxiufengge_id", yusuan.getZhuangxiufenggeId())
            .eq("yusuan_name", yusuan.getYusuanName())
            .eq("yusuan_uuid_number", yusuan.getYusuanUuidNumber())
            .eq("yusuan_types", yusuan.getYusuanTypes())
//            .notIn("yusuan_types", new Integer[]{102})
            ;
        logger.info("sql语句:"+queryWrapper.getSqlSegment());
        YusuanEntity yusuanEntity = yusuanService.selectOne(queryWrapper);
        if(yusuanEntity==null){
            yusuan.setInsertTime(new Date());
            yusuan.setCreateTime(new Date());
        yusuanService.insert(yusuan);

            return R.ok();
        }else {
            return R.error(511,"表中有相同数据");
        }
    }

}

