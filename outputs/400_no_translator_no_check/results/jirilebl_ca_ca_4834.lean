import Mathlib

/-!
  Translation of: Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and c ∈ ℂ.
  Then the zero set { z ∈ U | f z = c } is discrete (each zero is isolated).
  Furthermore, if p ∈ U and f(p) = c, then there exists δ > 0 and a holomorphic g
  on the disk of radius δ around p such that g is not identically zero, f(z) - c = (z - p)^k * g(z)
  for all z in the disk, and g(p) ≠ 0, for some k ∈ ℕ.

  We declare a dummy predicate `IsHolomorphicOn` to represent holomorphicity so the
  statement checks in Lean; proofs are omitted (sorry).
-/

variable (IsHolomorphicOn : (ℂ → ℂ) → Set ℂ → Prop)

open Set Metric

theorem zero_set_isolated {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : IsHolomorphicOn f U)
  (c : ℂ) :
  ∀ p, p ∈ U → f p = c → ∃ δ : ℝ, 0 < δ ∧ (Metric.ball p δ ∩ (U ∩ {z | f z = c}) = {p}) := by sorry

theorem local_zero_factorization {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : IsHolomorphicOn f U) {p c : ℂ} (hp : p ∈ U) (hpz : f p = c) :
  ∃ δ : ℝ, 0 < δ ∧ ∃ (k : ℕ) (g : ℂ → ℂ), IsHolomorphicOn g (Metric.ball p δ) ∧
    (∀ z ∈ Metric.ball p δ, f z - c = (z - p) ^ k * g z) ∧ g p ≠ 0 := by sorry
