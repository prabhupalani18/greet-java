package com.greetTest;

import org.junit.Before;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.Matchers.greaterThan;
import static org.junit.Assert.assertThat;
import static org.junit.matchers.JUnitMatchers.containsString;

public class TestGreeter {

  private Greeter greeter;

  @Before
  public void setup() {
    greeter = new Greeter();
  }

  @Test
  public void greetShouldIncludeTheOneBeingGreeted() {
    String name = "Prabhu";

    assertThat(greeter.greet(name), containsString(name));
  }

  @Test
  public void greetShouldIncludeGreetingPhrase() {
    String name = "Prabhu";

    assertThat(greeter.greet(name).length(), is(greaterThan(name.length())));
  }
}
