import Mathlib

/-- There exists a primitive root modulo n iff n ∈ {2,4} ∪ {p^t} ∪ {2 p^t} with p an odd prime. -/
 theorem exists_primitive_root_iff (n : ℕ) :
   (∃ a : ℕ, IsPrimitiveRoot a n) ↔
     n = 2 ∨ n = 4 ∨ (∃ p t : ℕ, p.Prime ∧ p ≠ 2 ∧ n = p ^ t) ∨ (∃ p t : ℕ, p.Prime ∧ p ≠ 2 ∧ n = 2 * p ^ t) := by
   sorry
