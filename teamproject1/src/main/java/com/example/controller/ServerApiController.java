package com.example.controller;

import java.io.IOException;
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
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;


import com.example.domain.NewsApiVO;
import com.example.domain.ServerApiVO;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RestController
@RequestMapping("/main/*")
public class ServerApiController {
    
   
    @GetMapping("/economic")
    public String economic(Model model) throws IOException {

        String query = "경제";
        String encode = Base64.getEncoder().encodeToString(query.getBytes(StandardCharsets.UTF_8));
    
        URI uri = UriComponentsBuilder.fromUriString("https://openapi.naver.com/")
        .path("v1/search/news.json")
        .queryParam("query", "경제")
        .queryParam("display", 10)
        .queryParam("display", 10)
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
        
        return "redirect:/main/list";
    }
   


}