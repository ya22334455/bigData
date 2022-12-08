package com.ujiuye.shopping.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by IBM on 2020/8/10.
 */
public class DateUtil {

    // 日期类型转换为字符串类型
    public static String dateToString(Date date)
    {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String strDate = simpleDateFormat.format(date);

        return strDate;
    }

    // 字符串类型转换为日期类型
    public static Date stringToDate(String date)
    {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date parse = null ;

        try {
            parse = simpleDateFormat.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return parse ;

    }


}
