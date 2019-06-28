package com.mytlx.education.dao;

import com.mytlx.education.domain.Order;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectKey;
import org.springframework.stereotype.Repository;

/**
 * @author TLX
 * @date 2019.6.28
 * @time 12:19
 */
@Repository
public interface OrderDao {

    @Insert("INSERT INTO `order`(user_id, course_id, fee, time_limit) VALUES" +
            "(#{order.userId}, #{order.courseId}, #{order.fee}, " +
            "#{order.timeLimit})")
    @SelectKey(resultType = Integer.class, keyColumn = "id", before = true,
            statement = "SELECT LAST_INSERT_ID() AS id", keyProperty = "id")
    int addOrder(@Param("order") Order order);

}
