package com.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Todo {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int todoid;
	private String todoTitle;
	private String todoContent;
	private Date todoDate;
	
	
	public Todo() {
		super();
		
	}
	public int getTodoid() {
		return todoid;
	}
	public void setTodoid(int todoid) {
		this.todoid = todoid;
	}
	public String getTodoTitle() {
		return todoTitle;
	}
	public void setTodoTitle(String todoTitle) {
		this.todoTitle = todoTitle;
	}
	public String getTodoContent() {
		return todoContent;
	}
	public void setTodoContent(String todoContent) {
		this.todoContent = todoContent;
	}
	public Date getTodoDate() {
		return todoDate;
	}
	public void setTodoDate(Date todoDate) {
		this.todoDate = todoDate;
	}
	@Override
	public String toString() {
		return this.getTodoTitle()+":"+this.getTodoContent();
	}
}
	
	
	
