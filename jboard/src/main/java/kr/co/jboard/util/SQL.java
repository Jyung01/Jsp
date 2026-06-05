package kr.co.jboard.util;

public class SQL {
	
	// Article
	public static final String INSERT_ARTICLE = "INSERT INTO Article SET "
															+ "type='free',"
															+ "title=?,"
															+ "content=?,"																			
															+ "file=?,"																			
															+ "writer=?,"
															+ "regip=?,"
															+ "wdate=NOW()";
	
	public static final String SELECT_ARTICLE = "SELECT "
														+ "a.*, "
														+ "u.nick,"
														+ "f.* "
														+ "from article a "
														+ "left join file f on a.ano = f.ano "
														+ "join user u on a.writer = u.userid "
														+ "where a.ano=?";
	
	public static final String SELECT_MAX_ANO = "SELECT MAX(ano) FROM Article";
	
	public static final String SELECT_COUNT_ARTICLE = "SELECT count(*) FROM Article";
	
	
	public static final String SELECT_ALL_ARTICLE = "SELECT a.*, u.nick FROM Article AS a "
													+ "JOIN User AS u "
													+ "ON a.writer = u.userid "
													+ "ORDER BY ano DESC "
													+ "LIMIT ?, 10";
	
	public static final String SELECT_COUNT_ARTICLE_JOIN = "SELECT count(*) FROM Article AS a "
															+ "JOIN User AS u ON a.writer = u.userid ";
	
	public static final String SELECT_ALL_ARTICLE_JOIN = "SELECT a.*, u.nick FROM Article AS a "
															+ "JOIN User AS u ON a.writer = u.userid ";
	
	public static final String WHERE_TITLE_KEYWORD = "where title like ? ";
	public static final String WHERE_CONTENT_KEYWORD = "where content like ? ";
	public static final String WHERE_NICK_KEYWORD = "where nick like ? ";
	public static final String ORDER_LIMIT = "ORDER BY ano DESC LIMIT ?, 10";
	
	public static final String UPDATE_ARTICLE = "UPDATE Article SET "
															+ "title=?,"
															+ "content=? "															
															+ "WHERE ano=?";
	
	public static final String UPDATE_ARTICLE_HIT = "UPDATE Article SET "
															+ "hit=hit + 1 "															
															+ "WHERE ano=?";
	
	public static final String DELETE_ARTICLE = "DELETE FROM Article WHERE ano=?";
	
	// User
	public static final String INSERT_USER = "INSERT INTO User SET "
												+ "userid=?,"
												+ "pass=SHA2(?, 256),"
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
	public static final String SELECT_COUNT_USER = "SELECT COUNT(*) FROM User ";
	public static final String WHERE_USERID = "WHERE userid=?";
	public static final String WHERE_NICK = "WHERE nick=?";
	public static final String WHERE_EMAIL = "WHERE email=?";
	public static final String WHERE_HP = "WHERE hp=?";
	
	
	
	public static final String SELECT_USER_WITH_PASS = "SELECT * FROM User WHERE userid=? AND pass=SHA2(?, 256)";
	public static final String SELECT_ALL_USER = "";
	public static final String UPDATE_USER = "";
	public static final String DELETE_USER = "";
	
	// File
	public static final String INSERT_FILE = "INSERT INTO File SET "
												+ "ano=?,"
												+ "ofname=?,"
												+ "sfname=?,"
												+ "rdate=NOW()";
	public static final String SELECT_FILE = "";
	public static final String SELECT_ALL_FILE = "";
	public static final String UPDATE_FILE = "";
	public static final String DELETE_FILE = "";
	
	// Comment
	public static final String INSERT_COMMENT = "";
	public static final String SELECT_COMMENT = "";
	public static final String SELECT_ALL_COMMENT = "";
	public static final String UPDATE_COMMENT = "";
	public static final String DELETE_COMMENT = "";
	
	// Terms
	public static final String INSERT_TERMS = "";
	public static final String SELECT_TERMS = "SELECT * FROM Terms WHERE no=?";
	public static final String SELECT_ALL_TERMS = "";
	public static final String UPDATE_TERMS = "";
	public static final String DELETE_TERMS = "";

}










