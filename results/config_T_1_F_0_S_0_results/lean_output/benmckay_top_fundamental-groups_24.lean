import Mathlib

/-- Let X be a topological space covered by open sets U : A → Set X (⋃ a, U a = univ).
Let x : {t : ℝ // 0 ≤ t ∧ t ≤ 1} → X be a path (no continuity needed).
Then there exist n : ℕ, t : Fin (n+1) → {t : ℝ // 0 ≤ t ∧ t ≤ 1} and a : Fin n → A such that
(t 0 : ℝ) = 0, (t (Fin.last n) : ℝ) = 1, and for all i : Fin n we have (t i : ℝ) < (t i.succ : ℝ)
and ∀ s in the unit interval with (t i : ℝ) ≤ (s : ℝ) ≤ (t i.succ : ℝ) we have x s ∈ U (a i).
-/
theorem exists_subdivision_cover {X : Type*} [TopologicalSpace X] {A : Type*} (U : A → Set X)
  (hU : (⋃ a, U a) = univ) (x : {t : ℝ // 0 ≤ t ∧ t ≤ 1} → X) :
  ∃ (n : ℕ) (t : Fin (n+1) → {t : ℝ // 0 ≤ t ∧ t ≤ 1}) (a : Fin n → A),
    (t 0 : ℝ) = 0 ∧ (t (Fin.last n) : ℝ) = 1 ∧
    (∀ i : Fin n, (t i : ℝ) < (t i.succ : ℝ)) ∧
    (∀ i : Fin n, ∀ s : {t : ℝ // 0 ≤ t ∧ t ≤ 1},
      (t i : ℝ) ≤ (s : ℝ) → (s : ℝ) ≤ (t i.succ : ℝ) → x s ∈ U (a i)) := by sorry
