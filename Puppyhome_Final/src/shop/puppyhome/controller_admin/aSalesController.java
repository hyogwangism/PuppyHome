package shop.puppyhome.controller_admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shop.puppyhome.controller.Action;
import shop.puppyhome.controller.ActionForward;

public class aSalesController implements Action {

	// 카테고리 별 매출
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./page/admin/aSales.jsp"); // 뷰페이지 경로 설정.
		
		return forward;
	}

}
