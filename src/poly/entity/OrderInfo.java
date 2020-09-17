package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "OrderInfo")
public class OrderInfo {
	@Id
	@GeneratedValue
	private int ID;
	private int Pdid;
	private int Pdquantity;
	private float Pricesum;
	@Length(min = 5, max = 50, message = "Vui lòng nhập đầy đủ họ tên!")
	private String Ctname;
	@NotBlank(message="Vui lòng nhập email!")
	@Email(message = "Vui lòng nhập đúng dạng email!")
	private String Ctemail;
	@Pattern(regexp = "0[0-9]{9,12}", message = "Vui lòng nhập đúng số điện thoại!")
	private String Ctnumber;
	@Length(min = 5, max = 100, message = "Vui lòng nhập đầy đủ địa chỉ!")
	private String Ctaddress;
	private String DateTime;

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getPdid() {
		return Pdid;
	}

	public void setPdid(int pdid) {
		Pdid = pdid;
	}

	public int getPdquantity() {
		return Pdquantity;
	}

	public void setPdquantity(int pdquantity) {
		Pdquantity = pdquantity;
	}

	public float getPricesum() {
		return Pricesum;
	}

	public void setPricesum(float pricesum) {
		Pricesum = pricesum;
	}

	public String getCtname() {
		return Ctname;
	}

	public void setCtname(String ctname) {
		Ctname = ctname;
	}

	public String getCtemail() {
		return Ctemail;
	}

	public void setCtemail(String ctemail) {
		Ctemail = ctemail;
	}

	public String getCtnumber() {
		return Ctnumber;
	}

	public void setCtnumber(String ctnumber) {
		Ctnumber = ctnumber;
	}

	public String getCtaddress() {
		return Ctaddress;
	}

	public void setCtaddress(String ctaddress) {
		Ctaddress = ctaddress;
	}

	public String getDateTime() {
		return DateTime;
	}

	public void setDateTime(String dateTime) {
		DateTime = dateTime;
	}
}
