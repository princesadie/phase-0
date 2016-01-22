//===========PSEUDOCODE

// DEFINE 'sum' function, which takes 1 argument, 'array'
// 	CREATE var 'total',
// 		SET to 0,
// 	ITERATE over 'array',
// 		ADD each element in 'array' to 'total'

// DEFINE 'average' function, which takes 1 argument, 'array'
// 	CREATE var 'ave',
// 		SET equal to the following function
// 			CALL 'sum' function DIVIDED by 'array' length

// DEFINE 'median' function, which takes 1 argument, 'array'
// 	CREATE var 'sorted',
// 		SET equal to SORTED 'array',
// 	CREATE var 'length'
// 		SET equal to LENGTH of 'array'
// 	CREATE var 'med'
// 		SET equal to the following,
// 			CALL 'sorted' at the following index, 'sorted' length minus 1 divided by 2,
// 			PLUS
// 			CALL 'sorted' at the following index, 'sorted' length divided by 2,
// 			ENCLOSE both CALLS above
// 			DIVIDE by 2