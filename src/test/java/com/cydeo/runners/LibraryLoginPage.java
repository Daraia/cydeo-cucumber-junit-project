package com.cydeo.runners;

import com.cydeo.utilities.Driver;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public abstract class LibraryLoginPage {

    public void Login(){

        PageFactory.initElements(Driver.getDriver(),this);
    }
@FindBy(id = "inputEmail")
    public String inputEmail;}
