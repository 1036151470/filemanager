package com.helloblog;

public class Pojo {

    private String getAbsoluteFile;
    private String name;
    private String path;

    public String getGetAbsoluteFile() {
        return getAbsoluteFile;
    }

    public void setGetAbsoluteFile(String getAbsoluteFile) {
        this.getAbsoluteFile = getAbsoluteFile;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    @Override
    public String toString() {
        return "Pojo{" +
                "getAbsoluteFile='" + getAbsoluteFile + '\'' +
                ", name='" + name + '\'' +
                ", path='" + path + '\'' +
                '}';
    }
}
