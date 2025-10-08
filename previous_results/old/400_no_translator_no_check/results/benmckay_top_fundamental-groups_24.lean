import Mathlib

open Set

/-!
Lemma: Given a topological space X covered by open sets (X_a)_{a : A} and a path x : [0,1] → X,
there exist 0 = t_0 < t_1 < ... < t_n = 1 and indices a_0,...,a_{n-1} such that
x([t_i,t_{i+1}]) ⊆ X_{a_i} for each i.
-/

theorem exists_partition_for_path {X : Type*} [TopologicalSpace X] {A : Type*}
  (Xcov : A → Set X) (hopen : ∀ a, IsOpen (Xcov a)) (x : ℝ → X) :
  ∃ (n : ℕ) (t : Fin (n+1) → ℝ) (a : Fin n → A),
    (t 0 = 0) ∧ (t (Fin.last n) = 1) ∧
    (∀ i : Fin n, t (Fin.castSucc i) < t i.succ) ∧
    (∀ i : Fin n, x '' (Set.Icc (t (Fin.castSucc i)) (t i.succ)) ⊆ Xcov (a i)) := by
  sorry
