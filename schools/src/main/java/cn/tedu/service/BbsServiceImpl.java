package cn.tedu.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import cn.tedu.mapper.BbsMapper;
import cn.tedu.mapper.GreatMapper;
import cn.tedu.pojo.Bbs;

@Service
public class BbsServiceImpl implements BbsService{
	
	@Autowired
	private BbsMapper bbsMapper;
	
	@Autowired
	GreatMapper greatMapper;
	
	//根据recount（评论数量）查询所有Bbs
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<Bbs> findAll() {
		return bbsMapper.findAll();
	}
	
	//根据creatTime（创建时间）查询所有Bbs
	@Override
	public List<Bbs> findAllByTime(Integer nowPage, Integer pageCount) {
		Integer nowPaget  = (nowPage-1)*10+1;
		Integer pageCountt = nowPaget+pageCount-1;
		return bbsMapper.findAllByTime(nowPaget,pageCountt);
	}
	
	//根据bssId（帖子id）查询这条数据的详细信息
	@Override
	public Bbs findAllByBbsId(String bssId) {
		
		return bbsMapper.findAllByBbsId(bssId);
	}

	//根据bssClass（标签）查询相应的Bbs
//	@Override
//	public List<Bbs> findAllByClass(String bssClass) {
//		
//		return bbsMapper.findAllByClass(bssClass);
//	}
	
	//帖子发布
	@Override
	@Transactional(propagation=Propagation.REQUIRED)

	public void saveBBS(Bbs bbs) {
		bbs.setCreatTime(new Date());
		bbsMapper.saveBBS(bbs);
	}
	@Override
	public void uploadObject(MultipartFile myFile) {
			String digest=null;
	        try{
	            //2.1获取文件内容
	            byte[] content=myFile.getBytes();
	            //2.3对文件内容进行MD5加密,获取摘要信息
	            //byte[] buf=DigestUtils.md5Digest(content);
	            //System.out.println(Arrays.toString(buf));
	            digest=
	                    DigestUtils.md5DigestAsHex(content);
	            System.out.println(digest);
	        }catch(IOException e){
	            e.printStackTrace();
	           // throw new ServiceException("读取文件内容失败");
	        }
	        //3.根据摘要信息查询数据库,判定有没有此文件
//	        Attachment attachment=
//	                attachmentDao.findObjectByDigest(digest);
//	        System.out.println("attachment="+attachment);
//	        if(attachment!=null)
//	            throw new ServiceException("文件已上传");
	        //4.假如服务端没有此文件,执行上传动作
	        //d:/upload/2017/09/14/文件名.后缀名
	        //构建一个文件上传目录
	        SimpleDateFormat sdf=
	                new SimpleDateFormat("yyyy/MM/dd");
	        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	        String destDir=request.getSession().getServletContext().getRealPath("/")+"/WEB-INF/upload/"+sdf.format(new Date());
	        //构建一个随机字符串作为文件名
	        String newName=UUID.randomUUID().toString();
	        //获得文件名后缀,构建新文件名
	        String fileName=myFile.getOriginalFilename();
	        System.out.println("fileName="+fileName);
	        String ext=
	                fileName.substring(fileName.lastIndexOf("."));
	        String destFileName=newName+ext;
	        //创建目标文件对象
	        File dest=new File(destDir,destFileName);
	        File parent=dest.getParentFile();
	        if(!parent.exists()){
	            parent.mkdirs();
	        }
	        //上传文件(transfertTo方法用于实现上传)
	        try{
	        	myFile.transferTo(dest);
	        }catch(IOException e){
	            e.printStackTrace();
	            //throw new ServiceException("文件上传失败");
	        }
		
	}

	@Override
	public int findCount() {
		
		return bbsMapper.findCount();
	}
	
	//从数据库里查询所有帖子
	@Override
	public List<Bbs> findAllBbs(Integer nowPage, Integer pageCount) {
		Integer nowPaget  = (nowPage-1)*10+1;
		Integer pageCountt = nowPaget+pageCount-1;
		return bbsMapper.findAllBbs(nowPaget,pageCountt);
	}

	@Override
	public void updateGreat(String bbsId ,int count) {
		bbsMapper.updateGreat(bbsId , count);
	}


	//查询帖子数量
	@Override
	public Bbs findBbsFirst() {
		
		return bbsMapper.findBbsFirst();
	}

	@Override
	public Bbs findBbsByFirstTime() {
		
		return bbsMapper.findBbsByFirstTime();
	}
	@Override
	public String findBbsIdByReplyId(String replyId) {
		
		return bbsMapper.findBbsIdByReplyId(replyId);

	}


}
