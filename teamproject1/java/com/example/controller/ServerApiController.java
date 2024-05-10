package com.example.controller;

import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.List;

import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.example.domain.NewsApiVO;
import com.example.domain.ServerApiVO;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/main/*")
public class ServerApiController {
    
	@GetMapping("/mainPage")
	public void mainPage(Model model) {
		
		String mainNews = "속보";
		
		news(mainNews, model);
	}
   
	
//	@RequestMapping(value="/news", method= {RequestMethod.GET})
    @GetMapping("/news")
    public String news(String text, Model model) {
		
        String query = text;
        String encode = Base64.getEncoder().encodeToString(query.getBytes(StandardCharsets.UTF_8));
    
        URI uri = UriComponentsBuilder.fromUriString("https://openapi.naver.com/")
        .path("v1/search/news.json")
        .queryParam("query", query)
        .queryParam("display", 5)
        .queryParam("sort", "sim")
        .encode()
        .build()
        .toUri();

        log.info("uri : {}", uri);
       
        RequestEntity<Void> req = RequestEntity
        .get(uri)
        .header("X-Naver-Client-Id", "8FuasSq49i12orkVTtYH")
        .header("X-Naver-Client-Secret", "0mRs4FmlxT")
        .build();
        
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> resp = restTemplate.exchange(req, String.class);
        
        ObjectMapper om = new ObjectMapper();
        ServerApiVO resultVO = null;
        
        try {
        	resultVO = om.readValue(resp.getBody(), ServerApiVO.class);
        }
        catch(JsonMappingException e){
        	e.printStackTrace();
        }
        catch(JsonProcessingException e) {
        	e.printStackTrace();
        }
        
        List<NewsApiVO> news = resultVO.getItems();
        
        model.addAttribute("news", news);
        
        return "/main/mainPage";
        
    }
    
    @GetMapping("/chart")
    public String chart(String text, Model model) {
		
        String serviceKey = "6nb8LASgBI5KdNfSJjUZbt9iTeN0R1aMnjBI0MSXpHyFchnTlPT3cjurMemZMH872d4KBHEBTirFipybWlMd8Q%253D%253D";
        String encode = Base64.getEncoder().encodeToString(text.getBytes(StandardCharsets.UTF_8));
    
        URI uri = UriComponentsBuilder.fromUriString("https://apis.data.go.kr/1160100/service/GetStockSecuritiesInfoService/")
        .path("getStockPriceInfo")
        .queryParam("serviceKey", serviceKey)
        .queryParam("likeItmsNm", text)
        .encode()
        .build()
        .toUri();

        log.info("uri : {}", uri);
       
        RequestEntity<Void> req = RequestEntity
        .get(uri)
        .header("X-Naver-Client-Id", "8FuasSq49i12orkVTtYH")
        .header("X-Naver-Client-Secret", "0mRs4FmlxT")
        .build();
        
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> resp = restTemplate.exchange(req, String.class);
        
        ObjectMapper om = new ObjectMapper();
        ServerApiVO resultVO = null;
        
        try {
        	resultVO = om.readValue(resp.getBody(), ServerApiVO.class);
        }
        catch(JsonMappingException e){
        	e.printStackTrace();
        }
        catch(JsonProcessingException e) {
        	e.printStackTrace();
        }
        
        List<NewsApiVO> news = resultVO.getItems();
        
        model.addAttribute("news", news);
        
        return "/main/mainPage";
        
    }
   


}