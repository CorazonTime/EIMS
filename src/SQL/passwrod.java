package SQL;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class passwrod {
    public static String encrypt(String password) {
        try {
            // 创建MD5加密实例
            MessageDigest md = MessageDigest.getInstance("MD5");

            // 计算MD5哈希值
            md.update(password.getBytes());

            // 将字节数组转换为BigInteger表示
            BigInteger bi = new BigInteger(1, md.digest());

            // 将BigInteger转换为16进制表示，并补齐前导零
            String encryptedPassword = String.format("%032x", bi);

            return encryptedPassword;
        } catch (NoSuchAlgorithmException e) {
            // 如果算法不可用，处理异常
            e.printStackTrace();
            // 返回空串或者抛出自定义异常，具体取决于你的需求
            return "";
        }
    }
}
