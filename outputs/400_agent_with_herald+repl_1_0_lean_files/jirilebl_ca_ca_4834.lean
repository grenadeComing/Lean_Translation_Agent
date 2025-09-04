import Mathlib

/-!
Translation of:
Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and c ∈ ℂ. Then { z ∈ U : f(z) = c } is a discrete set. Furthermore, if p ∈ U and f(p) = c, then there exists δ > 0 and a holomorphic g : Δ_δ(p) → ℂ such that g is not identically zero, f(z)-c = (z-p)^k * g(z) for all z ∈ Δ_δ(p), and g(p) ≠ 0, where k ∈ ℕ is fixed.

We avoid committing to a particular Mathlib name for holomorphic; instead we declare a predicate `IsHolomorphicOn` and state the desired theorems ending with `:= by sorry`.
-/

variable (IsHolomorphicOn : (ℂ → ℂ) → Set ℂ → Prop)

open Metric

theorem holomorphic_zeros_are_isolated {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : IsHolomorphicOn f U) (c : ℂ) :
  ∀ p ∈ U, f p = c → ∃ δ > 0, ∀ z, z ∈ U ∩ ball p δ → z = p ∨ f z ≠ c := by
  sorry

theorem holomorphic_local_factorization {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U) (hf : IsHolomorphicOn f U)
  {p : ℂ} (hp : p ∈ U) {c : ℂ} (hfp : f p = c) :
  ∃ (k : ℕ) (δ : ℝ) (g : ℂ → ℂ), 0 < δ ∧ IsHolomorphicOn g (ball p δ) ∧ g p ≠ 0 ∧
    ∀ z ∈ ball p δ, f z - c = (z - p) ^ k * g z := by
  sorry
