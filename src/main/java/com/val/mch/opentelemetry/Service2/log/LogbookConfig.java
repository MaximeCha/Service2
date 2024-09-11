package com.val.mch.opentelemetry.Service2.log;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.zalando.logbook.Logbook;
import org.zalando.logbook.core.DefaultHttpLogFormatter;
import org.zalando.logbook.core.DefaultHttpLogWriter;
import org.zalando.logbook.core.DefaultSink;

import static org.zalando.logbook.core.Conditions.exclude;
import static org.zalando.logbook.core.Conditions.requestTo;

@Configuration
public class LogbookConfig {

    @Bean
    public Logbook logbook()
    {
        return Logbook.builder()
                .condition(exclude(
                    requestTo("/actuator/**"),
                    requestTo("/admin/**"))
                )
                .sink(new DefaultSink(new DefaultHttpLogFormatter(),new DefaultHttpLogWriter())).build();
    }
}
