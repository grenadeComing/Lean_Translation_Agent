universe u

constant ZMod : Nat → Type u

class Field (α : Type u) : Prop

namespace Nat

def Prime (n : Nat) : Prop := 1 < n

end Nat

/-- Let n be a positive integer. Then Z_n is a field iff n is prime. -/
theorem zmod_field_iff_prime (n : Nat) (hn : 1 < n) : Field (ZMod n) ↔ Nat.Prime n := by
  sorry
