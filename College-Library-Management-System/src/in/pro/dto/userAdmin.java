package in.pro.dto;

public class userAdmin {
	private int bookid;
	private String bookname;
	private String publisher;
	private String author;
	public userAdmin() {}

	public userAdmin(int bookid, String bookname, String publisher, String author) {
		this.bookid = bookid;
		this.bookname = bookname;
		this.publisher = publisher;
		this.author = author;
	}



	public int getBookid() {
		return bookid;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	@Override
	public String toString() {
		return "userAdmin [bookid=" + bookid + ", bookname=" + bookname + ", publisher=" + publisher + ", author="
				+ author + "]";
	}

}
