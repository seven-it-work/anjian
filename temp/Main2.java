
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Base64;
import java.util.List;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

public class Main2 {

    public static void main(String[] args) throws Exception {
//        String s="{\u0022SignContent\u0022:\u0022{\\u0022Code\\u0022:1400,\\u0022Message\\u0022:\\u0022注册码不存在！\\u0022,\\u0022Data\\u0022:{\\u0022ClientTimestamp\\u0022:1712559099,\\u0022ServerTimestamp\\u0022:1712559099}}\u0022,\u0022Signature\u0022:\u0022DEzelYlonfbxZ3Rn5+NFqUqx7xGJ//XLtNxFNL9bvMSy5aAikv8q82aGG2b7msWSSOlPW5XAaeG6XCbKB04g0iEFMAVHYzAcnBhz7xSZ22mDVwNYKPyXvlVUg6kDTRDDJXUlFOMjppcaKdDQ01Pg1TlVCDD2ZAY3l5SX6osk2D8=\u0022}";
//        String decrypt = encrypt(s, "b4af55a5".getBytes());
//        System.out.println(decrypt);
//        String encrypt = decrypt(decrypt, "b4af55a5".getBytes());
//        System.out.println(encrypt);

        String ciphertext = "plTp6fqma/DxrHPBF/pk9Kat8/RNtNJ7/rm2VZyNlhr3ughDZQPweTq3MDgVr31jZUXzcjFvlbw170Es5DrpcZ0y+B+YpuXefDzX+fH224tRruTP5AfSwOGKS6YGV5XjMuZ23pSpcKle/i3ATdNIMCUTYpDktvVWe0sPVnVhfga6XlsS3EZL0fDwgCPvNovslsqjwF8iU5cpp8ErSlDSv6jVXPagtPz16bXiirCNXlPIUKuoQLtoT7aXPseZUVl0KbgKJ+iBP96kd4Lf2nJP0zkQ4sVFUfxAFMtpABEKq/5IWrxwJs0RZtFEpWICmG7b3SvFNp2noKg+KNKA/D6RUBxxhuPJ0J9xFcCH1dnIYvucuj5awF/uXw8WbJk6D6EOWZfRs0pHJ6VogbRPdrxK8XkKuU2/9X/m2VfeCd5SToPxS5+L6gXuPgBKosTmhR1Hl3qhpMItzTZsG+SA5zQjMsn9BxZdLCGgzvucnL/Dg7kI+0pk1YCfsTZmnFd3aNZa4VaQb4FMA6N9xJ50sNZ7R3YFUgqiLU+h";
        String x = bruteForceCracking(ciphertext).replace("1713180919","1744110022");
        System.out.println(x);

//        String tem="{\"SignContent\":\"{\\u0022Code\\u0022:200,\\u0022Message\\u0022:\\u0022请求成功！\\u0022,\\u0022Data\\u0022:{\\u0022ExpireTime\\u0022:1744110022,\\u0022ClientTimestamp\\u0022:1712577192,\\u0022ServerTimestamp\\u0022:1712577193}}\",\"Signature\":\"J+OIaF8SvpWrBvM2AzHMhTcdmCZ3TjV2yiQh3ektVkAEry8PU7mLA69xqm4NtWdO9vjdtH5HLlAVWY4XVPxwf7cJtwEtj6IbMzQ0lJyo0zp7ntX9BXKiV8JCIYOkTtS/imOaXMSE2MTQTRy10EhxUk25dvWmXZOmdvPdGX1a72o=\"}  ";
        String encrypt = encrypt(x, "7fed39f9".getBytes());
        System.out.println(encrypt);
        System.out.println(decrypt(encrypt,"7fed39f9".getBytes()));
    }

    public static List<String> salt = Arrays.asList("a6cd931d", "1dcf44bf", "650e59d7", "3460d8da", "21fbt87f",
        "317e5900", "ed1139f0", "c99f6f94", "a6cd931d", "1dcf44bf", "650e59d7", "3460d8da", "21fbt87f", "317e5900",
        "ed1139f0", "c99f6f94", "c6bd901f", "0ddf44be", "950e5927", "6460d8df", "11fb887f", "117e4900", "bd113950",
        "a99f6f97","8dbe4df8", "be5aa0ed", "d9d54d9f", "f79e1471", "6d31c74e", "462dca7d", "07e95c1d", "daa1a7eb","1bff00f5", "caf7a1f0", "7fed39f9", "a1988775", "964f8677", "242678c5", "b4af55a5", "6619cb9d");

    /**
     * 将拦截的Data密文传入，暴力获取 盐值 以及解密
     * @param ciphertext
     * @return
     */
    public static String bruteForceCracking(String ciphertext) {
        try {
            for (String s : salt) {
                System.out.println("-------------------------------");
                String result = decrypt(ciphertext, s.getBytes());
                if (result.contains("SignContent")){
                    System.out.println("密文：\n"+ciphertext);
                    System.out.println("key：\n"+s);
                    System.out.println(result);
                    return  result;
                }
                System.out.println("-------------------------------");
            }
            throw new RuntimeException("解密失败");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 对Data进行加密
     * @param str 明文
     * @param bArr 需要调用暴力破解获取（盐值）
     * @return
     * @throws Exception
     */
    public static String encrypt(String str, byte[] bArr) throws Exception {
        DESKeySpec dESKeySpec = new DESKeySpec(bArr);
        SecretKey key = SecretKeyFactory.getInstance("DES").generateSecret(dESKeySpec);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(1, key);
        byte[] bytes = str.getBytes("utf-8");
        if (bytes.length % 8 != 0) {
            byte[] bArr2 = new byte[(bytes.length + 8) - (bytes.length % 8)];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            bytes = bArr2;
        }
        Base64.Encoder encoder = Base64.getEncoder();
        return encoder.encodeToString(cipher.doFinal(bytes));
    }

    /**
     * 进行解密
     * @param str 密文
     * @param bArr 需要调用暴力破解获取（盐值）
     * @return
     * @throws Exception
     */
    public static String decrypt(String str, byte[] bArr) throws Exception {
        DESKeySpec dESKeySpec = new DESKeySpec(bArr);
        SecretKey key = SecretKeyFactory.getInstance("DES").generateSecret(dESKeySpec);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(Cipher.DECRYPT_MODE, key);
        Base64.Decoder decoder = Base64.getDecoder();
        byte[] bytes = decoder.decode(str);
        return new String(cipher.doFinal(bytes), "utf-8");
    }
}