package ru.javawebinar.topjava.repository.jdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;
import ru.javawebinar.topjava.Profiles;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

@Profile(Profiles.HSQL_DB)
@Repository
public class JdbcMealRepositoryHsqldbImpl extends JdbcMealRepositoryImpl {

    @Autowired
    public JdbcMealRepositoryHsqldbImpl(DataSource dataSource,
                                        JdbcTemplate jdbcTemplate,
                                        NamedParameterJdbcTemplate namedParameterJdbcTemplate) {

        init(dataSource, jdbcTemplate, namedParameterJdbcTemplate);
    }
}
