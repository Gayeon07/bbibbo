package GBSB.bbibbo.Config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        // 모든 경로를 index.html로 리디렉션
        registry.addViewController("/{path:[^\\.]*}").setViewName("forward:/");
    }
}
