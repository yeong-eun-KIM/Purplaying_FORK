package kr.co.purplaying.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.purplaying.dao.IndexDao;
import kr.co.purplaying.domain.BannerFileDto;
import kr.co.purplaying.domain.NoticeDto;
import kr.co.purplaying.domain.PageResolver;
import kr.co.purplaying.domain.PageResolver2;
import kr.co.purplaying.domain.ProjectDto;
import kr.co.purplaying.domain.SearchItem;
import kr.co.purplaying.domain.SearchItem2;
import kr.co.purplaying.domain.UserDto;
import kr.co.purplaying.service.FileService;
import kr.co.purplaying.service.LikeService;
import kr.co.purplaying.service.SettingService;

@Controller
public class IndexController {

  @Autowired
  IndexDao indexDao;
  
  @Autowired
  SettingService settingService;
  
  @Autowired
  FileService fileService;
  
  @Autowired
  LikeService likeService;
  
  @RequestMapping("/")
  public String getPage(SearchItem2 sc2, ProjectDto projectDto, Model m, Authentication authentication) {
   
    try {
//    로그인 시 유저정보(userDto) 세션에 저장
//      UserDto userDto = settingService.setUser(id);
//      session.putValue("userDto", userDto);
      
//    페이지네이션
      Map map = new HashMap();

      int totalCnt = indexDao.getCount();
      m.addAttribute("totalCnt", totalCnt);
      System.out.println("totalCnt : "+ totalCnt);
      
      PageResolver2 pageResolver2 = new PageResolver2(totalCnt, sc2);
      m.addAttribute("pr", pageResolver2);
      System.out.println("pr : "+ pageResolver2);
      
//    인기펀딩 리스트
      List<ProjectDto> list_p = indexDao.popluarFunding(map);
      m.addAttribute("list_p",list_p);
      m.addAttribute("list_p_size",list_p.size());
      
//    신규펀딩 리스트
      List<ProjectDto> list_n = indexDao.newFunding(map);
      m.addAttribute("list_n",list_n);
      
//    메인 캐러셀 리스트
      List<BannerFileDto> bannerList = fileService.selectBannerList();
      m.addAttribute("bannerList",bannerList);
      
//    좋아요 리스트
      if(authentication != null) {
        UserDto userDto = (UserDto) authentication.getPrincipal();
        String user_id = userDto.getUser_id();
        
        if(user_id!=null) {
          boolean likecheck = false;
           List<Integer> Likelist = likeService.selectLikelist(user_id);
           System.out.println(Likelist);
           m.addAttribute("Likelist",Likelist);
        }
      }
       
    } catch (Exception e) {
      e.printStackTrace();
    }
    
    return "/index";
  }
  
}
