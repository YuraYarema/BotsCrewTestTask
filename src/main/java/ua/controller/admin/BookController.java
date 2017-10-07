package ua.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ua.entity.Book;
import ua.service.BookService;

@Controller
@RequestMapping("/admin/book")
@SessionAttributes("book")
public class BookController {

	@Autowired
	private BookService bookService;
	
	@ModelAttribute("book")
	public Book getForm(){
		return new Book();
	}
	
	@GetMapping
	public String show(Model model){
		model.addAttribute("books", bookService.findAll());
		return "admin-book";
	}
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id){
		bookService.delete(id);
		return "redirect:/admin/book";
	}
	@GetMapping("/update/{id}")
	public String update(@PathVariable int id, Model model){
		show(model);
		model.addAttribute("book", bookService.findOne(id));
		return "admin-book";
	}
	@PostMapping
	public String save(@ModelAttribute("book") Book book, SessionStatus status){
		bookService.save(book);
		status.setComplete();
		return "redirect:/admin/book";
	}
}
