import Mathlib

/--
Let `X` be a topological space covered by open sets `U a` (a ∈ A) and let
`x : [0,1] → X` be a continuous path. Then there exist real numbers
`0 = t_0 < t_1 < ... < t_n = 1` and indices `a_0,...,a_{n-1}` in `A` such that for
each `i` we have `x([t_i,t_{i+1}]) ⊆ U a_i`.

This statement is given below in a form suitable for Lean: the domain of the
path is the subtype `{t : ℝ // 0 ≤ t ∧ t ≤ 1}` and the partition is given by a
map `t : Fin (n+1) → {t : ℝ // 0 ≤ t ∧ t ≤ 1}` with strictly increasing real
values. The final condition asserts that every point of the closed subinterval
between successive `t i` is mapped into the corresponding open set `U (a i)`.
-/

variable {X : Type*} [TopologicalSpace X] {A : Type*}

theorem exists_partition_of_path_into_open_cover
  (U : A → Set X)
  (hUopen : ∀ a, IsOpen (U a))
  (hcover : (⋃ a, U a) = (univ : Set X))
  {x : {t : ℝ // 0 ≤ t ∧ t ≤ 1} → X} (hx : Continuous x) :
  ∃ (n : ℕ) (t : Fin (n+1) → {t : ℝ // 0 ≤ t ∧ t ≤ 1}) (a_idx : Fin n → A),
    (t 0 : ℝ) = 0 ∧ (t (Fin.last n) : ℝ) = 1 ∧
    (∀ i : Fin n, (t i : ℝ) < (t (Fin.succ i) : ℝ)) ∧
    (∀ i : Fin n, ∀ s : {t : ℝ // 0 ≤ t ∧ t ≤ 1},
      ((s : ℝ) ∈ Set.Icc (t i : ℝ) (t (Fin.succ i) : ℝ) → x s ∈ U (a_idx i))) :=
by sorry
