package com.clothingStore.atn.utils;

import java.io.FileWriter;
import java.io.IOException;

public class AlipayConfig {
    //↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016102400748753";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCI9bpj42SwaXahDaW/TkJGGMim8ppmeuUhzbSj7gQ5s3vMrgXpCgbAtyjY8aBfM9IIQNV20Dkl2vn+FnUMrsKBNalx6HdrtavI7803krSJz8q8sAx3HZ5fhHzS0yXrYSLHiP9BCO4EwGBcFEC85rJzoulzvDjkLXx2w7GKdUf6ayUhboWDjLfOffd+o9pVOvvssr5+TmnkYq5m6IcZLZGJ4VoOldAHL6hyDHY8Z/l2Y65vF3CxHZMmENSKlrEZF7WbQTAams/BFQ91Awdnc8ryiAQAklwC03OAx41Akqmxp8oFgs+k7ehS8HOwJXbt/C81VGqIaVQZA1ofrt/Idp7VAgMBAAECggEAFk32cegJcNVsFWR0lsg28NV+b/nYfVIMWMn4Xi4YEBGT2syId+BDI0Vw6IvJM1fsH533ZacZd3nG9sNPgqY/VO2ZT8ytDiSC+nFbOW6x6jOl7763+Pog3atk7KyoY0HpeRdtgnji0nFGABjoRhtH+p8QZ+HCXh6uQ2UxV7wr4bMuVgUNcID+36KB6lXCbmCslfXpmVCFKRQE0tD916e+NE9Gadn5zBG1WI0DSIjLQVtSun6VBJT5vzG9LHg+FFtiJOeIxCec8sRW8R9dEuNuhJujLjhJfxfwM4RHOxOd/ibbLopoj42K7ZPl+AHxwVY2ubH+3lSYGFMBQlxhVF0eYQKBgQC83memnAwy4SoBk7/BnQw3qQ3q1STeu96xLy7DN+O3CwnKyorsjFLJ4UbuXwDCn6Tfe1+dc3K3PBMKouwW4MOy5vSQftxcbOB1QUT5tXFuu3XUQ6+2JkuBcIXKdLZLoejXrPhKfdlRXUVL+q5BqvVNn7WubjVZ5Iu2gPhfX+66LQKBgQC5pAQTzbT3kFmbqbScQQr7FJiIXTJPnHuAIspfGbBfOz0ZFb2dapy+2aG5VZgN5DxGnxCbr5mU1xQ04F1hDC7qo8HA+uLoCNXXc16JmYgYVaALF0zpX0p8qpHa/UySNktsWhYE1GxLSByeXmAdjqF3yROCBmdYOygvLzARn86oSQKBgCFXHXMC3wBoURMAMvyJratxs1w+DgknnvMmQhoCFresQilDQezqBH9QvkW8DZVNuzwcOk/AHoMMHsxk4EpVmRZOwON1EY9bRPBN+lAeYIzMmMtEu5LrBa8u3t9TZQ7K4SCZjycPOjqrvVzhPrum4zC1vcux9scMmkE4WR/0/l5tAoGBAJBqNr3NLjXUttDw0U8pDkjK+epDTgs+uZix9+rJijpbVCl6jzqxoGSb20LZgmN0JSvvPDVRAtIWC2MjE6GWn7zrTaQ5yGEn1ms4FdhHducvXUSjiLKX7dNTwgmxOWsZD82nuy9grSpXW+QbmPwFZDlSVHm3T5gE1Tr3o5ZiUpr5AoGAV93ERBpSRqQoSicqtMckeiSfm/R+ux89tZuKss5LHJs2ZmSEGN4effcEFXsKMZbNPnko55dp1gSIxGYTAKvqOoP+WT6/Zz2JjJ7b6EkMswjloGH2w7ntx7b24IpKtUoPJ5rERgfPzd/hRPsCsrWPh+jh83rDJq7oKS6y7Evze6M=";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgBTkWJKwTZfDkWltk4iJX+kFGjtZFhduYdzgENYf6xBfLaEHPV0O/2aiBg/Xc2LrU9lCvb1iTstzMed8/EyYD0qcXHo5AVn5SiwZr4zC6YEOqfoW82vuDzLZM60HQKpdNV/tVKRoUcFDciiuIpqBS6vG8IYX7PROnTzvRxQ8npah86DleBwM+4Bc/S0yXy/9cg3WNa/sRDi9LUpFxD5uKNEFYkYxB1P0Smclk3gv08nimjUviTS2Sj8D550liiO8YCQXGB3cO+X2c/v0NXIjYlkjzIAtBaEWo22i0RbAidxb/MKB+1d14gYxmSb9yEmYUmyoSkekrAo0t0nOftZklwIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:8080/clothestore_war/shop/consume/paySuccess";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
