package cn.tedu;



import java.util.ArrayList;
import java.util.List;

public class Page {
	//总记录数
	private int allCount;
	//每页条数
	private int pageCount=10;
	//总页数
	private int allPage=0;
	//当前页
	private int nowPage;
	//上一页
	private int prevPage;
	//下一页
	private int nextPage;
	//页码条
	private List pageList  = new ArrayList();
	public int getAllCount() {
		return allCount;
	}
	public void setAllCount(int allCount){//从数据库里查询总记录数
		this.allCount = allCount;
	}
	public int getPageCount() {//每页10条记录
		return pageCount;
	}
	
	public int getAllPage() {//总页数根据总记录数和每页条数相除而得
		return allPage;
	}
	public void setAllPage(int allPage){
		this.allPage = allPage;
	}
	public int getNowPage() {//当前页根据页码条所得
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getPrevPage() {//上一页根据当前页-1所得
		if(nowPage==1){
			prevPage=1;
			return prevPage;
		}else{
			return nowPage-1;
		}
	}
	
	public int getNextPage() {//下一页根据当前页+1所得
		if(nowPage==allPage){
			return allPage;
		}else{
			return nowPage+1;
		}
	}
	public List getPageList() {//根据总页数而得
		
		return pageList;
	}
	public void setPageList(List pageList){
		this.pageList = pageList;
	}
	
	
	

}

