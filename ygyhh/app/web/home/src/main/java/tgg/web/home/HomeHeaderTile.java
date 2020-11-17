package tgg.web.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tqlab.sense.tiles.Tile;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Tile
@RequestMapping("home:header")
public class HomeHeaderTile {

    @RequestMapping(method = RequestMethod.GET)
    public String render(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
        map.addAttribute("header", "Great! The tile of sense is ok.");
        return "header.vm";
    }
}
