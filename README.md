# Electric Vehicles Database

A highly optimized MySQL database system for managing electric vehicle data, featuring a 98% reduction in dataset size while improving query execution speed by 30%.

## Features

- **Optimized Data Structure**: Efficiently normalized database schema reducing a 30,000-row dataset to a compact and performant structure
- **Comprehensive Vehicle Information**: Tracks details of various electric vehicle makes, models, and their specifications
- **Geographic Data Management**: Includes data about cities, counties, and postal codes
- **Utility Service Tracking**: Monitors electric utility services and their coverage areas
- **Performance-Optimized Views**: Pre-configured views for common queries:
  - Tesla electric range analytics
  - Vehicle registration by county
  - Utility service distribution
  - Popular model analysis
  - Post-2020 vehicle statistics

## Database Schema

The database consists of several interconnected tables:
- `vehicles`
- `vehicle_models`
- `vehicle_makes`
- `addresses`
- `cities`
- `counties`
- `postal_codes`
- `electric_utilities`
- `vehicle_electric_utilities`

## Key Optimizations

1. **Data Normalization**: Implemented proper database normalization to eliminate redundancy
2. **Indexed Queries**: Strategic use of indexes for faster data retrieval
3. **Efficient Views**: Created optimized views for frequently accessed data combinations
4. **Reduced Storage**: Achieved 98% reduction in dataset size through proper structuring
5. **Query Performance**: Improved query execution speed by 30% through optimization

## Requirements

- MySQL 8.0.34 or higher
- Proper database user permissions
- Sufficient storage space for database operations

## Usage

The database supports various queries for analyzing electric vehicle data, including:
- Vehicle distribution by region
- Electric range analysis
- Utility service coverage
- Model popularity trends
- Year-based vehicle statistics

## Contributing

Feel free to contribute to this project by:
1. Forking the repository
2. Creating a feature branch
3. Committing your changes
4. Opening a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
