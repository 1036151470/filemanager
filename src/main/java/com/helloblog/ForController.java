package com.helloblog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class ForController {

    @RequestMapping("/changename")
    public String changename(Map<String, Object> map, String removefile, String changename) {
        File remove = new File(removefile);
        File file = new File(remove.getParent() + File.separator + changename);
        File filepath = new File(remove.getParent());
        remove.renameTo(file);

        File[] arrayfile = filepath.listFiles();
        List<Pojo> list = new ArrayList<>();

        for (File f : arrayfile) {
            Pojo pojo = new Pojo();
            pojo.setGetAbsoluteFile(String.valueOf(f.getAbsoluteFile()));
            pojo.setName(f.getName());
            pojo.setPath(f.getParent()+File.separator);
            list.add(pojo);
        }
        map.put("filelist", list);

        return "index";
    }


    @RequestMapping("/removefile")
    public String removefile(Map<String, Object> map, String removefile) {
        File file = new File(removefile);
        File filepath = new File(file.getParent());
        if (file.isFile()) {
            file.delete();
            File[] arrayfile = filepath.listFiles();
            List<Pojo> list = new ArrayList<>();

            for (File f : arrayfile) {
                Pojo pojo = new Pojo();
                pojo.setGetAbsoluteFile(String.valueOf(f.getAbsoluteFile()));
                pojo.setName(f.getName());
                pojo.setPath(f.getParent()+File.separator);
                list.add(pojo);
            }
            map.put("filelist", list);

        }
        return "index";
    }

    @PostMapping("/")
    public String addlist(Map<String, Object> map, String addlist) {
        File file = new File(addlist);
        File[] arrayfile = file.listFiles();
        List<Pojo> list = new ArrayList<>();

        for (File f : arrayfile) {
            Pojo pojo = new Pojo();
            pojo.setGetAbsoluteFile(String.valueOf(f.getAbsoluteFile()));
            pojo.setName(f.getName());
            pojo.setPath(f.getParent()+File.separator);
            list.add(pojo);
        }
        map.put("filelist", list);
        return "index";
    }

    @GetMapping("/")
    public String index() {
        return "index";
    }
}
