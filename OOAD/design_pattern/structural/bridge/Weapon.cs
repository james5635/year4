/*
Imagine you have a weapon that can have various enchantments, and you need to combine different weapons with different enchantments. How would you handle this? Would you create multiple copies of each weapon, each with a different enchantment, or would you create separate enchantments and apply them to the weapon as needed? The Bridge pattern enables you to do the latter.
*/
public interface IWeapon {
    void wield();

    void swing();

    void unwield();

    IEnchantment getEnchantment();
}

public class Sword: IWeapon {

    private IEnchantment enchantment;

    public Sword(IEnchantment enchantment) {
        this.enchantment = enchantment;
    }

    public override void wield() {
        Console.WriteLine("The sword is wielded.");
        enchantment.onActivate();
    }

    public override void swing() {
        Console.WriteLine("The sword is swung.");
        enchantment.apply();
    }

    public override void unwield() {
        Console.WriteLine("The sword is unwielded.");
        enchantment.onDeactivate();
    }

    public override IEnchantment getEnchantment() {
        return enchantment;
    }
}

public class Hammer: IWeapon {

    private  IEnchantment enchantment;

    public Hammer(IEnchantment enchantment) {
        this.enchantment = enchantment;
    }

    public override void wield() {
        Console.WriteLine("The hammer is wielded.");
        enchantment.onActivate();
    }

    public override void swing() {
        Console.WriteLine("The hammer is swung.");
        enchantment.apply();
    }

    public override void unwield() {
        Console.WriteLine("The hammer is unwielded.");
        enchantment.onDeactivate();
    }

    public override IEnchantment getEnchantment() {
        return enchantment;
    }
}

public interface IEnchantment {
    void onActivate();

    void apply();

    void onDeactivate();
}

public class FlyingEnchantment : IEnchantment {

    public override void onActivate() {
        Console.WriteLine("The item begins to glow faintly.");
    }

  
    public override void apply() {
        Console.WriteLine("The item flies and strikes the enemies finally returning to owner's hand.");
    }


    public override void  onDeactivate() {
        Console.WriteLine("The item's glow fades.");
    }
}

public class SoulEatingEnchantment: IEnchantment {

    public override void onActivate() {
        Console.WriteLine("The item spreads bloodlust.");
    }

    public override void apply() {
        Console.WriteLine("The item eats the soul of enemies.");
    }

    public override void onDeactivate() {
        Console.WriteLine("Bloodlust slowly disappears.");
    }
}


public class Client{
public static void Main(String[] args) {
    Console.WriteLine("The knight receives an enchanted sword.");
    var enchantedSword = new Sword(new SoulEatingEnchantment());
    enchantedSword.wield();
    enchantedSword.swing();
    enchantedSword.unwield();

    Console.WriteLine("The valkyrie receives an enchanted hammer.");
    var hammer = new Hammer(new FlyingEnchantment());
    hammer.wield();
    hammer.swing();
    hammer.unwield();
}
}