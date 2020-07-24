package com.codeup.adlister.util;

import org.mindrot.jbcrypt.BCrypt;

public class Password<pwMatch> {
    private static final int ROUNDS = 12;

    public static String hash(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt(ROUNDS));
    }

    public static boolean check(String password, String hash) {
        return BCrypt.checkpw(password, hash);
    }


    public static void main(String[] args) {


        String password2 = "YellowRose1234";
        String hash2 = BCrypt.hashpw(password2, BCrypt.gensalt());
        System.out.println("HASH2: " + hash2);


        boolean pwMatch2 = BCrypt.checkpw("YellowRose1234", hash2);
        System.out.println(pwMatch2);

    }

}