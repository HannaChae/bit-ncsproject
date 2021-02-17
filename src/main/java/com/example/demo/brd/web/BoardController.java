package com.example.demo.brd.web;

import java.util.HashMap;  
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.brd.service.Board;
import com.example.demo.brd.service.BoardRepository;
import com.example.demo.brd.service.BoardService;




@RestController
@RequestMapping("/boards")
public class BoardController {
	@Autowired BoardRepository boardRepository;
	@Autowired BoardService boardService;
	
	@PostMapping("/writer")
    public Map<?, ?> writter(@RequestBody Board b) {
        var map = new HashMap<>();
        map.put("message", (boardRepository.insertWritter(b) == 1) ? "SUCCESS" : "FAILURE");
        return map;
    }
	  public Map<String, Object> hashmap(){
	        Supplier<Map<String, Object>> s = HashMap::new;
	        return s.get();
	    }
	  
	  
//	@GetMapping("/list")
//  public Map<?,?> list(){
//		Board a = new Board();
//		a.set(a.setCount("0"));
//		a.get(a.set());
//		var map = hashmap();
//	
//      List<Board> l = boardMapper.selectAll();
//      System.out.println("목록 수: "+l.size());
//      System.out.println( boardService.count());
//      map.put("list", l);
//      map.put("count", boardService.count());
//      return map;
//
//  }
	@GetMapping("/list")
    public List<Board> list(){
        return boardRepository.selectAll();
    }
	@GetMapping("/{title}")
	public Board det(@PathVariable String title) {
		return boardRepository.selectById(title);
	}
	@PutMapping("/update")
	public Map<?, ?> update(@RequestBody Board b){
		var map = new HashMap<>();
		map.put("message",boardRepository.update(b) == 1 ? "SUCCESS" : "FAILURE");
		return map;
	}
	@DeleteMapping("/remove")
	public Map<?, ?> remove(@RequestBody Board b){
		var map = new HashMap<>();
		map.put("message",boardRepository.delete(b) == 1 ? "SUCCESS" : "FAILURE");
		return map;
	}
	

	
}
