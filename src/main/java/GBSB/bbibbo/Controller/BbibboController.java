package GBSB.bbibbo.Controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class BbibboController {
    @GetMapping("/api/demo-web")
    public List<String> Bbibbo(){
        return Arrays.asList("삐뽀, 삐뽀");
    }
}