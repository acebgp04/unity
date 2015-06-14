import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Image;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.*;

import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;

/**
 * Created by ace on 6/14/15.
 */
class ITextTest {
    public  static  void main(String[] args) throws DocumentException, MalformedURLException, IOException {
        new ITextTest().manipulatePdf("TestForm.pdf", "TestForm.pdf");
    }

    public void manipulatePdf(String src, String dest) throws IOException, DocumentException {
        PdfReader reader = new PdfReader(src);
        PdfStamper stamper = new PdfStamper(reader, new FileOutputStream(dest));
        AcroFields form = stamper.getAcroFields();
        PushbuttonField ad = form.getNewPushbuttonFromField("picture1");
        ad.setLayout(PushbuttonField.LAYOUT_ICON_ONLY);
        ad.setProportionalIcon(true);
        ad.setImage(Image.getInstance("Snip20150614_4.png"));
        form.replacePushbuttonField("picture1", ad.getField());
        stamper.close();
        reader.close();
    }
}
