import Mathlib

open Set

/-- Let X be a topological space covered by open sets {X_a}_{a\in A} and let x : [0,1] → X be a path.
There exist real numbers 0 = t_0 < t_1 < ... < t_n = 1 and indices a_0, ..., a_{n-1} such that
for each i we have x([t_i, t_{i+1}]) ⊆ X_{a_i}. -/
theorem benmckay_top_fundamental_groups_24
  {X : Type*} [TopologicalSpace X] {A : Type*} (U : A → Set X)
  (x : {t : ℝ // 0 ≤ t ∧ t ≤ 1} → X) (hx : Continuous x)
  (hopen : ∀ a, IsOpen (U a)) (hcover : (⋃ a, U a) = univ) :
  ∃ (n : ℕ) (ts : Fin (n + 1) → ℝ) (a : Fin n → A),
    ts 0 = 0 ∧ ts (Fin.last n) = 1 ∧ (∀ i : Fin n, ts (Fin.castSucc i) < ts (i.succ)) ∧
    ∀ i : Fin n, (x '' {s : {t : ℝ // 0 ≤ t ∧ t ≤ 1} | ts (Fin.castSucc i) ≤ s.1 ∧ s.1 ≤ ts (i.succ)}) ⊆ U (a i) := by sorry