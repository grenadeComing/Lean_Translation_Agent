import Mathlib

open Subgroup

theorem Herstein_exercise_2_5_44 {G : Type _} [Group G] [Finite G] {p : ℕ} (hp : Fact (Nat.Prime p)) (hcard : Nat.card G = p ^ 2) :
  ∃ H : Subgroup G, Nat.card (↥H) = p ∧ Subgroup.normalizer H = H := by sorry
