import Mathlib
open Function

/-- Let n be a positive integer. A congruence class [a] ∈ ℤ_n is a unit if and only if gcd(a,n) = 1. Hence, the set of units { x : ZMod n | IsUnit x } equals { x : ZMod n | Nat.gcd (ZMod.val x) n = 1 }. -/
theorem units_eq_coprime {n : ℕ} [NeZero n] :
    { x : ZMod n | IsUnit x } = { x : ZMod n | Nat.gcd x.val n = 1 } := by sorry
