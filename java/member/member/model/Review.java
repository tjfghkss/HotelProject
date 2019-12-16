package member.model;

public class Review {
	private int r_num;
	private int m_num;
	private int o_num;
	private String r_comment;
	private int r_star;
	private int r_checker;
	
	public int getR_checker() {
		return r_checker;
	}
	public void setR_checker(int r_checker) {
		this.r_checker = r_checker;
	}
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
	}
	public String getR_comment() {
		return r_comment;
	}
	public void setR_comment(String r_comment) {
		this.r_comment = r_comment;
	}
	public int getR_star() {
		return r_star;
	}
	public void setR_star(int r_star) {
		this.r_star = r_star;
	}
	@Override
	public String toString() {
		return "Review [r_num=" + r_num + ", m_num=" + m_num + ", o_num=" + o_num + ", r_comment=" + r_comment
				+ ", r_star=" + r_star + ", r_checker=" + r_checker + "]";
	}
	
	
	
}
