package com.zte.confession.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.jfinal.core.Controller;
import com.zte.base.SpringUtils;
import com.zte.base.StrRandom;
import com.zte.pojo.Confession;
import com.zte.service.ConfessionService;

public class IndexController extends Controller {
//	public void index() {
//		String base = getHttpPath(getRequest());
//		setAttr("base", base);
//		render("/Confession/record.jsp");
//	}

//	private String getHttpPath(HttpServletRequest request) {
//		StringBuilder path = new StringBuilder();
//
////		path.append(request.getScheme() + "://");
//		path.append(request.getServerName() + ":");
//		path.append(request.getServerPort());
//		path.append(request.getContextPath());
//
//		return path.toString();
//	}

	/**
	 * 蹇忔倲鍦ㄧ嚎涓婁紶闊抽绀轰緥
	 * 
	 * @throws Exception
	 */
	public void confessiondupload() throws Exception {
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
		String dateStr = format.format(date);
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload load = new ServletFileUpload(factory);
		List list = load.parseRequest(getRequest());
		Iterator<FileItem> iter = list.iterator();
		String path = getRequest().getContextPath();
		//鍦ㄦ湇鍔″櫒涓婇儴缃蹭箣鍚巖ealPath鍙兘鑾峰彇鍒皐ebapps,鎵�互鍦ㄥ悗闈㈠姞涓婁簡椤圭洰鍚嶇О
		String realPath = new File(this.getRequest().getSession()
				.getServletContext().getRealPath(path))
				.getParent();//+"/clxj"
		String urlpath = "record/audio/";
		String audioPath = realPath + "/" + urlpath;
		//闅忔満鐮�
		//StrRandom strRandom = new StrRandom();
		String pwd = StrRandom.getStringRandom(10);
		while (iter.hasNext()) {
			FileItem item = iter.next();
			if (!item.isFormField()) {
				// 淇濆瓨鏂囦欢锛岀畝鍗曠殑淇濆瓨鍒版湰鍦帮紝鍙互鑷淇敼
				item.write(new File(audioPath + dateStr + item.getName()));
				audio("/" +urlpath+ dateStr + item.getName(),pwd);
			}
		}
		setAttr("saved", 1); 
		setAttr("pwd", pwd);
		renderJson();
	}

	public void audio(String url,String random) throws Exception {
		java.util.Date date = new java.util.Date();
		ConfessionService confessionService=(ConfessionService)SpringUtils.getBean("confessionService");
		Confession confession = new Confession();
		confession.setContent(url);
		confession.setType(false);
		confession.setReturnuid(0);
		confession.setCtime(date); 
		//闅忔満鐮侊紙鍚庨潰鎺ョ殑鏁板瓧鏄殢鏈哄嚑浣嶏級
		confession.setPwd(random);
		confession.setReturnflag(false);
		try {
			confessionService.addConfession(confession);
		} catch (Exception e) {
			System.out.println("SQL鎵ц閿欒");
			e.printStackTrace();
		}
	}

}