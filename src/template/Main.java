package template;

import tools.Printer;

import template.utility.Math;


public class Main {

  public static void main(String[] args) {

    System.out.println("Hello!");

    int x = Math.Add(2, 2);
    tools.Printer.print(String.format("2 + 2 is: %s", String.valueOf(x)));
  }

}
