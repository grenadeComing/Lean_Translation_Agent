import Mathlib

/-- Placeholder predicate saying a function is holomorphic on a set. -/
def HolomorphicOn (f : ℂ → ℂ) (U : Set ℂ) : Prop := True

/-- A set s is discrete if every point of s has a neighborhood in which it is the
    only point of s. We use metric.ball from Mathlib for the neighborhoods. -/
def discrete_set (s : Set ℂ) : Prop :=
  ∀ x ∈ s, ∃ δ : ℝ, 0 < δ ∧ (s ∩ Metric.ball x δ) = {x}

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and c ∈ ℂ. Then the zero
    set { z ∈ U | f z = c } is discrete. (We state holomorphicity using the
    placeholder predicate `HolomorphicOn`.) -/
theorem zeros_are_discrete {U : Set ℂ} {f : ℂ → ℂ} {c : ℂ}
  (hU : IsOpen U) (hf : HolomorphicOn f U) :
  discrete_set ({z : ℂ | z ∈ U ∧ f z = c}) := by sorry

/-- Local factorization: if p ∈ U and f(p) = c, then there exists δ > 0 and a
    holomorphic g on the disk of radius δ around p and k ∈ ℕ such that
    f(z) - c = (z - p)^k * g(z) on the disk, g is not identically zero and g(p) ≠ 0.
    Again `HolomorphicOn` is a placeholder for the analytic/holomorphic predicate. -/
theorem local_factorization {U : Set ℂ} {f : ℂ → ℂ} {c p : ℂ}
  (hU : IsOpen U) (hf : HolomorphicOn f U) (hp : p ∈ U) (hfp : f p = c) :
  ∃ δ : ℝ, ∃ g : ℂ → ℂ, ∃ k : ℕ,
    0 < δ ∧ HolomorphicOn g (Metric.ball p δ) ∧
    (∀ z, z ∈ Metric.ball p δ → f z - c = (z - p) ^ k * g z) ∧ g p ≠ 0 := by sorry
