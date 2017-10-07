package ua.editor;

import java.beans.PropertyEditorSupport;

import ua.service.BookService;

public class BookEditor extends PropertyEditorSupport{

	private final BookService bookService;

	public BookEditor(BookService bookService) {
		this.bookService = bookService;
	}

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		setValue(bookService.findOne(Integer.valueOf(text)));
	}
}
