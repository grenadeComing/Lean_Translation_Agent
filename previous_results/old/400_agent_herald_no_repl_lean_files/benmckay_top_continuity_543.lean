import Mathlib

open Set Real

variable (n : Nat)

def E := Fin n → ℝ

/-- The map f : E → ℝ × E used in the statement. For x = 0 we set f(0) = (1,0), and for x ≠ 0
    we set f(x) = (cos (π‖x‖), (sin (π‖x‖)/‖x‖) • x). -/
def f (x : E) : ℝ × E :=
  if h : x = 0 then ((1 : ℝ), (0 : E))
  else (Real.cos (Real.pi * ‖x‖), (Real.sin (Real.pi * ‖x‖) / ‖x‖) • x)

/-- Let X be the closed unit ball in ℝ^n, A its boundary sphere, and Y the unit sphere in ℝ^(n+1).
    The theorem asserts that f is injective on the interior X \ A and that every point of A is
    mapped to the single point (-1,0) ∈ Y. (Proof omitted.) -/
theorem benmckay_top_continuity_543 :
  let X : Set E := closedBall (0 : E) (1 : ℝ);
      A : Set E := sphere (0 : E) (1 : ℝ);
      Y : Set (ℝ × E) := sphere (0 : ℝ × E) (1 : ℝ)
  in
  InjOn (f : E → ℝ × E) (X \ A) ∧ (∀ a (ha : a ∈ A), f a = ((-1 : ℝ), (0 : E))) := by
  sorry
