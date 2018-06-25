package Quake.controller;

import Quake.model.Generale;
import Quake.repository.GeneraleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class serviceControllerGenerale
{
    @Autowired
    GeneraleRepository generaleRepository;

    @GetMapping("/getGenerale")
    public List<Generale> getGenerale() {
        return generaleRepository.findAll();
    }
}
