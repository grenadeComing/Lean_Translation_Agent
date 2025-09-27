import Mathlib

/-!
Maximum principle for harmonic functions in R^2 (statement only).
We state the theorem assuming an abstract predicate `is_harmonic_on` saying
that `f` is harmonic on `U`. The proof is omitted (`by sorry`).
-/

open Topology

variable {U : Set (ℝ × ℝ)} {f : (ℝ × ℝ) → ℝ}

-- abstract predicate saying `f` is harmonic on `U`
variable (is_harmonic_on : ((ℝ × ℝ) → ℝ) → Set (ℝ × ℝ) → Prop)

theorem harmonic_maximum_principle
  (hU : IsOpen U) (hconn : IsConnected U) (hharm : is_harmonic_on f U)
  (p : ℝ × ℝ) (hp : p ∈ U) (hpmax : ∀ x ∈ U, f x ≤ f p) :
  ∀ x ∈ U, f x = f p := by sorry
