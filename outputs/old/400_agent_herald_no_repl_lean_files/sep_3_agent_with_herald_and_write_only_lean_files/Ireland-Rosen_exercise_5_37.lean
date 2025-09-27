import Mathlib

/-!
Exercise 5.37 (Ireland & Rosen), translated into Lean4.
Statement (informal): If a is negative then p ≡ q (mod 4a) together with p ∤ a imply (a / p) = (a / q).

Here `(a / p)` is the usual quadratic (Legendre/Jacobi) symbol. For the purpose of this translation
we introduce a placeholder `leg_sym` to stand for that symbol and state the congruence/divisibility
hypothesis using integer divisibility. This file provides the statement only (proof omitted).
-/

/-- Placeholder for the quadratic symbol (a/p). In a full development this would be the Jacobi or
Legendre symbol from number theory. -/
def leg_sym (a : Int) (p : Int) : Int := 0

theorem Ireland_Rosen_exercise_5_37 {a p q : Int}
  (ha : a < 0)
  (hp_not_dvd : ¬ (p ∣ a))
  (hcong : (4 * a) ∣ (p - q)) :
  leg_sym a p = leg_sym a q := by sorry
