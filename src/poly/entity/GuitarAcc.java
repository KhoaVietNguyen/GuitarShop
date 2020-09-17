package poly.entity;

import java.io.UnsupportedEncodingException;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.apache.tomcat.util.codec.binary.Base64;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "GuitarAcc")
public class GuitarAcc {
	@Id
	@GeneratedValue
	private int ID;
	@Length(min = 5, max = 50, message = "Vui lòng nhập đầy đủ tên sản phẩm!")
	private String Name;
	@DecimalMin(value = "10.0", message = "Giá trị thấp nhất là 10.0 $!")
	private float Price;
	@NotBlank(message = "Vui lòng nhập thông tin sản phẩm!")
	private String Details;
	private byte[] Image;
	@Transient
	private String imgUtility;

	public byte[] getImage() {
		return Image;
	}

	public void setImage(byte[] image) {
		Image = image;
	}

	public void setImgUtility(String imgUtility) {
		this.imgUtility = imgUtility;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public float getPrice() {
		return Price;
	}

	public void setPrice(float price) {
		Price = price;
	}

	public String getDetails() {
		return Details;
	}

	public void setDetails(String details) {
		Details = details;
	}

	// getter method for encoding
	public String getImgUtility() {

		byte[] encodeBase64 = Base64.encodeBase64(getImage());
		String base64Encoded = null;
		try {
			base64Encoded = new String(encodeBase64, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return base64Encoded;
	}

}
