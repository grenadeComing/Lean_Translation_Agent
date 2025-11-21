import Mathlib

/-- If `m` and `n` are positive coprime natural numbers, then the cyclic group of order `m * n`
    (the additive group `ZMod (m * n)`) is additively equivalent to the product `ZMod m × ZMod n`.
    This is the (additive) Chinese Remainder Theorem for Z-mods. -/
theorem zmod_mul_equiv_of_coprime (m n : ℕ) (hm : 0 < m) (hn : 0 < n) (hcop : Coprime m n) :
  ZMod (m * n) ≃+ (ZMod m × ZMod n) := by sorry
