package kr.co.jboard.utill;

public class SQL {
	// Article
	public static final String INSERT_ARTICLE = "insert into article SET "
																+ "type='free',"
																+ "title=?,"
																+ "content=?,"
																+ "writer=?,"
																+ "regip=?,"
																+ "wdate=NOW()";
	public static final String SELECT_ARTICLE = "select * from article where ano = ?";
	public static final String SELECT_ALL_ARTICLE = "select * from article";
	public static final String UPDATE_ARTICLE = "update article set "
																+ "title=?,"
																+ "content=? "
																+ "where ano = ?";
	public static final String DELETE_ARTICLE = "delete from article where ano = ?";
	
	// User
	public static final String INSERT_USER = "insert into user set "
																+ "userid=?,"
																+ "pass=sha2(?, 256),"
																+ "name=?,"
																+ "nick=?,"
																+ "email=?,"
																+ "hp=?,"
																+ "zip=?,"
																+ "addr1=?,"
																+ "addr2=?,"
																+ "regip=?,"
																+ "regDate=NOW()";
	public static final String SELECT_USER = "";
	public static final String SELECT_COUNT_USER = "select count(*) from user ";
	public static final String WHERE_USERID = "where userid = ?";
	public static final String WHERE_NICK = "where nick = ?";
	public static final String WHERE_EMAIL = "where email = ?";
	public static final String WHERE_HP = "where hp = ?";
	
	public static final String SELECT_USER_WITH_PASS = "select * from user where userid = ? "
														+ "and pass=sha2(?, 256)";
	public static final String SELECT_ALL_USER = "";
	public static final String UPDATE_USER = "";
	public static final String DELETE_USER = "";
	
	// File
	public static final String INSERT_FILE = "";
	public static final String SELECT_FILE = "";
	public static final String SELECT_ALL_FILE = "";
	public static final String UPDATE_FILE = "";
	public static final String DELETE_FILE= "";
	
	// Comment
	public static final String INSERT_COMMENT = "";
	public static final String SELECT_COMMENT = "";
	public static final String SELECT_ALL_COMMENT = "";
	public static final String UPDATE_COMMENT = "";
	public static final String DELETE_COMMENT = "";
	
	// Terms
	public static final String INSERT_TERMS = "";
	public static final String SELECT_TERMS = "select * from terms where no = ?";
	public static final String SELECT_ALL_TERMS = "";
	public static final String UPDATE_TERMS = "";
	public static final String DELETE_TERMS = "";
}
