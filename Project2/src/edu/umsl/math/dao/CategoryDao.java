package edu.umsl.math.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;

import javax.servlet.UnavailableException;

import edu.umsl.math.beans.Problem;

public class CategoryDao {
	private Connection connection;
	private PreparedStatement results;
	private PreparedStatement addProblemById;

	public CategoryDao() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://192.168.64.2:3306/mathprobdb", "admin", "");

			results = connection.prepareStatement("SELECT * FROM problem;");

			addProblemById = connection.prepareStatement("SELECT * FROM category;");
		} catch (Exception e) {
			e.printStackTrace();
			throw new UnavailableException(e.getMessage());
		}
	}

	public List<Category> getProblemList() throws SQLException {
		List<Category> catlist = new ArrayList<Category>();

		try {
			ResultSet resultsRS = results.executeQuery();

			while (resultsRS.next()) {
				//Category prob = new Category();

				//prob.setPid(resultsRS.getInt(1));
				//prob.setContent(resultsRS.getString(2));
				//prob.setOrder_num(resultsRS.getInt(3));

				//catlist.add(prob);
			}
		} catch (SQLException sqlException) {
			sqlException.printStackTrace();
		}

		return catlist;
	}

}
