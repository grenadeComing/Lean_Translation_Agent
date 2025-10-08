import Mathlib

/-- Show that if m,n are relatively prime then C_{mn} ≅ C_m × C_n. (C_n is the cyclic group of order n.) -/
def equiv_add_zmod_of_coprime (m n : ℕ) (hmn : m.gcd n = 1) :
    AddEquiv (ZMod (m * n)) (ZMod m × ZMod n) := by sorry
