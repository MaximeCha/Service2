package com.val.mch.opentelemetry.Service2.log;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.zalando.logbook.Logbook;
import org.zalando.logbook.core.DefaultHttpLogFormatter;
import org.zalando.logbook.core.DefaultHttpLogWriter;
import org.zalando.logbook.core.DefaultSink;

@Configuration
public class LogbookConfig {

    @Bean
    public Logbook logbook()
    {
        return Logbook.builder()
                .sink(new DefaultSink(new DefaultHttpLogFormatter(),new DefaultHttpLogWriter())).build();
    }
}
