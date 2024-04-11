package com.insurence.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insurence.entity.Category;
import com.insurence.repository.CategoryRepository;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Service
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Data
public class CategoryService {

	@Autowired
	CategoryRepository catRepo;
	
	public Category saveCategorydetails(Category cat) {	
		cat=catRepo.save(cat);
		cat.setCustomCode("CAT-"+cat.getCatId());
		return catRepo.save(cat);
	}
	
	public List<Category> getAllCategories() {
		return catRepo.findAll();
	}
	
	public Category getCatById(int id) {
		return catRepo.findById(id).get();
	}
	
	public void editCategorydetails(Category cat) {
		boolean isTrue= catRepo.findById(cat.getCatId()).isPresent();
		if(isTrue)
		{
			catRepo.save(cat);
		}
	}
	
	public void deleteCat(int id) {
		catRepo.deleteById(id);
	}
	
	public String getCatDesc(int id) {
		return catRepo.findById(id).get().getCatName();
	}
}
