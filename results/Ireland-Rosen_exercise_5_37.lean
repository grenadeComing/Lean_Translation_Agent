import Mathlib

/-- A simple definition of the Legendre symbol (returning 0 if p | a, 1 if a is a quadratic residue mod p, and -1 otherwise).
    We require decidability for the two propositions appearing in the definition. -/
def leg_sym (a p : Int) [Decidable (p ∣ a)] [Decidable (∃ x : Int, p ∣ (x * x - a))] : Int :=
  if p ∣ a then 0
  else if (∃ x : Int, p ∣ (x * x - a)) then 1
  else -1

/-- Exercise 5.37 (Ireland & Rosen), translated: If a < 0 and p ≡ q (mod 4*a) with p ∤ a, then (a/p) = (a/q).
    Here we use `leg_sym` to denote the Legendre symbol. We include decidability hypotheses required by `leg_sym`.
-/
theorem ireland_rosen_exercise_5_37 (a : Int) (ha : a < 0) (p q : Int)
  (hpq : (4 * a) ∣ (p - q)) (hp : ¬ p ∣ a)
  [Decidable (p ∣ a)] [Decidable (∃ x : Int, p ∣ (x * x - a))]
  [Decidable (q ∣ a)] [Decidable (∃ x : Int, q ∣ (x * x - a))] :
  leg_sym a p = leg_sym a q := by
  sorry
