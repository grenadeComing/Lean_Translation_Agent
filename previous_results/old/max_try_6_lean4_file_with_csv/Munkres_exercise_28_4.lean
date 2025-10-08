import Mathlib
open Set Filter Topology TopologicalSpace Function

/-- A space $X$ is said to be countably compact if every countable open covering of $X$ contains a finite subcollection that covers $X$. Show that for a $T_1$ space $X$, countable compactness is equivalent to limit point compactness. -/
theorem countable_compactness_eq_limit_point_compactness_in_T1_space {X : Type*} [TopologicalSpace X]
    [T1Space X] : CountableCompactSpace X ↔ LimitPointCompactSpace X := by sorry
